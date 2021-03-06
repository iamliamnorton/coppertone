require 'coppertone/mechanism/domain_spec_optional'

module Coppertone
  class Mechanism
    # Implements the ptr mechanism.
    class Ptr < DomainSpecOptional
      def match_target_name(macro_context, request_context, target_name)
        matching_name =
          Coppertone::Utils::ValidatedDomainFinder
          .new(macro_context, request_context)
          .find(target_name)
        !matching_name.nil?
      end

      def self.label
        'ptr'
      end
    end
    register(Coppertone::Mechanism::Ptr)
  end
end
