require_relative 'stack'
require_relative 'node'

describe MyStack do
let(:empty_stack) {MyStack.new}
let(:a_stack) {MyStack.new(Node.new('a'))}

  context '#initialize' do
      it "is a Stack class" do
        expect(empty_stack.instance_of?(MyStack)).to eq(true)
      end

      it "initialized empty" do
        expect(empty_stack.top).to be_nil
      end

      it "initialized with a top" do
        expect(a_stack.top).to_not be_nil
      end
  end
end