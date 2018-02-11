describe 'about_me', type: :feature do
  it 'displays work experience list' do
    visit 'about_me.html'

    expect(page).to have_css '#workExperience'
    within '#workExperience' do
      expect(page).to have_content 'Feb 2016 - Aug 2017'
      expect(page).to have_content 'Summer 2015'
      expect(page).to have_content 'Summer 2015'
      expect(page).to have_content 'Gardener, Orkuveita Reykjavíkur, Iceland'
      expect(page).to have_content 'Nursery school teacher, Leikskólinn Furuborg, Iceland'
      expect(page).to have_content 'House keeping, Hlemmmur Square, Iceland.'
      expect(page).to have_content '-----------------------------------'
    end
  end

  it 'displays education list' do
    visit 'about_me.html'

    expect(page).to have_css '#education'
    within '#education' do
      expect(page).to have_content 'Current, Craft Academy,'
      expect(page).to have_content '2014- 2017 University of Iceland,'
      expect(page).to have_content '2015 Oxford Brookes University,'
      expect(page).to have_content '2007-2011 Kvennaskólinn í Reykjavík,'
      expect(page).to have_content '2005-2007 Árbæjarskóli'
      expect(page).to have_content '-----------------------------------'
    end
  end

end
