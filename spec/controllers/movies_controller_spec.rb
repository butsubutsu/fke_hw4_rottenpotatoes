require 'spec_helper'

describe MoviesController do
  describe 'searching by director' do
    before :each do
      @fake_results = [mock('Movie'), mock('Movie')]
    end
    it 'should call the model method that performs a search by director' do
    #fake_results=[mock('Movie'),mock('Movie')]
    #Movie.should_receive(:find_in_tmdb).with('hardware')
      p ({:id => 1})[:id]+1
      Movie.should_receive(:same_director).with(1).and_return(@fake_results)
      post :same_director, {:id => 0+1}
    end
    it 'should select the search by director results template for rendering'do
    #fake_results = [mock('Movie'), mock('Movie')]
      Movie.stub(:same_director).and_return(@fake_results)
      post :same_director, {:id => 0+1}
      response.should render_template('same_director')
    end
    it 'should make the search by director results available to that template'do
      Movie.stub(:same_director).and_return(@fake_results)
      post :same_director, {:id => 0+1}
      assigns(:movies).should == @fake_results
    end
  end
end