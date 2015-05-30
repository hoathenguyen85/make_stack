require_relative 'stack'
require_relative 'node'

describe MyStack do
let(:a_node) {Node.new('a')}
let(:b_node) {Node.new('b')}
let(:empty_stack) {MyStack.new}
let(:a_stack) {MyStack.new(a_node)}

  context '#initialize' do
    it "is a Stack class" do
      expect(empty_stack.instance_of?(MyStack)).to eq(true)
    end

    it "initialized empty" do
      expect(empty_stack.top).to be_nil
    end

    it "initialized with a node on top" do
      expect(a_stack.top).to_not be_nil
    end
  end

  context '#push' do
    it 'should return node added to stack' do
      expect(empty_stack.push(a_node)).to be(a_node)
    end
  end
end