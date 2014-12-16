class UserAgent
  module Browsers
    class Gecko < Base
      def self.extend?(agent)
        agent.application && agent.application.product == "Mozilla"
      end

      GeckoBrowsers = %w(
        Firefox
        Camino
        Iceweasel
        Seamonkey
      ).freeze

      def browser
        GeckoBrowsers.detect { |browser| respond_to?(browser, true) } || super
      end

      def version
        v = send(browser).version
        v.nil? ? super : v
      end

      def platform
        if comment = application.comment
          if comment[0] == 'compatible'
            nil
          elsif /^Windows / =~ comment[0]
            'Windows'
          elsif comment[1] =~ /^Android/
            'Android'
          else
            comment[0]
          end
        end
      end

      def security
        Security[application.comment[1]] || :strong
      end

      def os
        if comment = application.comment
          i = if comment[1] == 'U'
            2
          elsif /^Windows / =~ comment[0]
            0
          else
            1
          end

          OperatingSystems.normalize_os(comment[i])
        end
      end

      def localization
        if comment = application.comment
          comment[3]
        end
      end
    end
  end
end
