# frozen_string_literal: true

# The Kernel module.
module Kernel
  # rubocop:disable Naming/MethodName

  # @note Converts _arg_ to a boolean. Since a boolean is either `true` or
  #   `false`, and `true` and `false` are both a singleton, the `true` value can
  #   only be returned if the argument is `true`, and the `false` value can only
  #   be returned if the argument is `false`. Therefore, this method can be used
  #   to validate that the argument is a boolean.
  #
  # @param arg [#object_id] An object that must be a boolean.
  #
  # @return [Boolean] Either `true` or `false`.
  #
  # @raise [ArgumentError, TypeError] Not conform with boolean representation.
  #
  # @example
  #   require "kernel/boolean"
  #
  #   Boolean(false)  # => false
  #   Boolean(true)   # => true
  #   Boolean(nil)    # => TypeError: can't convert nil into boolean
  #   Boolean("true") # => ArgumentError: invalid value for Boolean(): "true"
  def Boolean(arg)
    return arg if [false, true].include?(arg)

    raise ::TypeError, "can't convert nil into boolean" if arg.nil?

    raise ::ArgumentError, "invalid value for Boolean(): #{arg.inspect}"
  end
  # rubocop:enable Naming/MethodName
end
