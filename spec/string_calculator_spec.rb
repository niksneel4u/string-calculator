# frozen_string_literal: true

# spec/string_calculator_spec.rb
require 'spec_helper'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number itself when only one number is provided' do
      calculator = StringCalculator.new
      expect(calculator.add('1')).to eq(1)
      expect(calculator.add('5')).to eq(5)
    end
  end
end
