require_relative '../lib/wrapper'

describe Wrapper do
  it 'works with spaces' do
    word_wrap = Wrapper.new
    wrapped_string = word_wrap.wrap('new wrapper', 7)
    expect(wrapped_string).to eq "new\nwrapper\n"
  end

  it 'works with no spaces' do
    word_wrap = Wrapper.new
    wrapped_string = word_wrap.wrap('hellothere', 5)
    expect(wrapped_string).to eq "hello\nthere\n"
  end

  it 'works with hyphens' do
    word_wrap = Wrapper.new
    wrapped_string = word_wrap.wrap('new-wrapper', 7)
    expect(wrapped_string).to eq "new\nwrapper\n"
  end

  it 'fails with stars' do
    word_wrap = Wrapper.new
    wrapped_string = word_wrap.wrap('new*wrapper', 5)
    expect(wrapped_string).not_to eq "new\nwrapper\n"
  end
end
