require 'rails_helper'

RSpec.describe Announcement, type: :model do
    it "should persist a announcement" do
    User.create(email: "olivier@gmail.com", password: "123456", first_name: "Olivier", last_name: "Belzeaux", id: 1)

    Announcement.create(
      title: "Robot mixeur blender",
      description: "Robot mixeur blender excellent état, très peu utilisé cause double emploi, livré avec notice d'utilisation.",
      price: 22,
      url_photo: "https://picsum.photos/400",
      category: 'ameublement',
      user_id: 1
    )

    expect(Announcement.count).to eq(1)
  end

  it "price shouldn't be eq to 0" do
    User.create(email: "olivier@gmail.com", password: "123456", first_name: "Olivier", last_name: "Belzeaux", id: 1)

    Announcement.create(
      title: "Robot mixeur blender",
      description: "Robot mixeur blender excellent état, très peu utilisé cause double emploi, livré avec notice d'utilisation.",
      price: 0,
      url_photo: "https://picsum.photos/400",
      category: 'ameublement',
      user_id: 1
    )

    expect(Announcement.count).to eq(0)
  end

  it "price should be positive" do
    User.create(email: "olivier@gmail.com", password: "123456", first_name: "Olivier", last_name: "Belzeaux", id: 1)

    Announcement.create(
      title: "Robot mixeur blender",
      description: "Robot mixeur blender excellent état, très peu utilisé cause double emploi, livré avec notice d'utilisation.",
      price: -10,
      url_photo: "https://picsum.photos/400",
      category: 'ameublement',
      user_id: 1
    )

    expect(Announcement.count).to eq(0)
  end

  it "category should be eq to automobile éléctromenager or ameublement" do
    User.create(email: "olivier@gmail.com", password: "123456", first_name: "Olivier", last_name: "Belzeaux", id: 1)

    Announcement.create(
      title: "Robot mixeur blender",
      description: "Robot mixeur blender excellent état, très peu utilisé cause double emploi, livré avec notice d'utilisation.",
      price: -10,
      url_photo: "https://picsum.photos/400",
      category: 'aménagement',
      user_id: 1
    )

    expect(Announcement.count).to eq(0)
  end

  it "title can't be blank" do
    User.create(email: "olivier@gmail.com", password: "123456", first_name: "Olivier", last_name: "Belzeaux", id: 1)

    Announcement.create(
      title: "",
      description: "Robot mixeur blender excellent état, très peu utilisé cause double emploi, livré avec notice d'utilisation.",
      price: -10,
      url_photo: "https://picsum.photos/400",
      category: 'aménagement',
      user_id: 1
    )

    expect(Announcement.count).to eq(0)
  end
end
