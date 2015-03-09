class UserAgent
  module Browsers
    class Base < Array
      include Comparable

      def <=>(other)
        if respond_to?(:browser, true) && other.respond_to?(:browser, true) &&
            browser == other.browser
          version <=> Version.new(other.version)
        else
          false
        end
      end

      def eql?(other)
        self == other
      end

      def to_s
        to_str
      end

      def to_str
        join(" ")
      end

      def application
        first
      end

      def browser
        application && application.product
      end

      def version
        application && application.version
      end

      def platform
        nil
      end

      def os
        nil
      end

      def respond_to?(symbol, include_all = false)
        detect_product(symbol) ? true : (include_all ? super : false)
      end

      def method_missing(method, *args, &block)
        detect_product(method) || super
      end

      def mobile?
        if detect_product('Mobile') || detect_comment('Mobile')
          true
        elsif os =~ /Android/
          true
        elsif application && application.comment &&
            application.comment.detect { |k, v| k =~ /^IEMobile/ }
          true
        else
          false
        end
      end

      def bot?
        # If UA has no application type, its probably generated by a
        # shitty bot.
        if application.nil?
          true

        # Match common case when bots refer to themselves as bots in
        # the application comment. There are no standards for how bots
        # should call themselves so its not an exhaustive method.
        #
        # If you want to expand the scope, override the method and
        # provide your own regexp. Any patches to future extend this
        # list will be rejected.
        elsif comment = application.comment
          comment.any? { |c| c =~ /bot/i }
        elsif product = application.product
          product.include?('bot')
        else
          false
        end
      end

      private
        def detect_product(product)
          detect { |useragent| useragent.product.to_s.downcase == product.to_s.downcase }
        end

        def detect_comment(comment)
          detect { |useragent| useragent.comment && useragent.comment.include?(comment) }
        end
    end
  end
end
