require_relative "../spec_helper_lite"
require_relative "../../lib/extentions/tags/controller"
require_relative "../../lib/extentions/tags/models/tag"

describe "controller" do
  let(:extention)  { Extentions::Tags }
  let(:template)   { Extentions::Renderer.new(stub(:extention, to_token: 'tags')) }
  let(:controller) { extention::Controller }
  let(:tag)        { extention::Model::Tag }

  let(:background) { PostBackground.new self}

  pending "should render tags" do
    tags = [tag.new({name: "ruby"}), tag.new({name: "rails"})]

    rendered = controller.new(@post, template).preview_block({ tags: tags })

    rendered.should match /ruby.*rails/
  end
end
