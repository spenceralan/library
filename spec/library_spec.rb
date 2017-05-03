require "helper_spec"

describe "Library" do
  let(:new_book1) {Book.new({:title => "Great Expectations", :author => "Charles Dickens"})}
  let(:new_book2) {Book.new({:title => "Queen of the Damned", :author => "Anne Rice"})}
  let(:new_book3) {Book.new({:title => "Fountainhead", :author => "Ayn Rand"})}
  let(:new_book4) {Book.new({:title => "Shock Doctrine", :author => "Naomi Klein"})}
  let(:new_book5) {Book.new({:title => "The Selfish Gene", :author => "Richard Dawkins"})}
  let(:new_book6) {Book.new({:title => "Interview with the Vampire", :author => "Anne Rice"})}
  let(:new_book7) {Book.new({:title => "Great Expectations", :author => "John Rivers"})}


  let(:new_patron1) {Patron.new({:name => "Marilyn Monroe"})}
  let(:new_patron2) {Patron.new({:name => "Nelson Mandela"})}
  let(:new_patron3) {Patron.new({:name => "Kurt Cobain"})}
  let(:new_patron4) {Patron.new({:name => "Fred Astaire"})}
  let(:new_patron5) {Patron.new({:name => "Lucille Ball"})}

  describe('.books') do
    it 'displays all the books' do
      new_book1.save
      new_book2.save
      new_book3.save
      new_book4.save
      new_book5.save
      expect(Library.books.to_a.length).to eq 5
    end
  end

  describe('.patrons') do
    it 'displays all the patrons' do
      new_patron1.save
      new_patron2.save
      new_patron3.save
      new_patron4.save
      new_patron5.save
      expect(Library.patrons.to_a.length).to eq 5
    end
  end

  describe('.search_by_author') do
    it 'displays all the books by author' do
      new_book1.save
      new_book2.save
      new_book6.save
      expect(Library.search_by_author("Anne Rice").to_a.length).to eq 2
    end
  end

  describe('.search_by_title') do
    it 'displays all the books that match a title' do
      new_book1.save
      new_book2.save
      new_book3.save
      new_book4.save
      new_book5.save
      new_book6.save
      new_book7.save
      expect(Library.search_by_title("Great Expectations").to_a.length).to eq 2
    end
  end

  # describe('.search_by_keyword') do
  #   it 'displays all the matching titles by keyword'
  # end

  # describe('.search_by_book_id') do
  #   it 'displays the book that matches the id' do
  #
  #   end
  # end
  #
  # describe('.search_by_patron_id') do
  #   it 'displays the patron that matches the id' do
  #
  #   end
  end
  #