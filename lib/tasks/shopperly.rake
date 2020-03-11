namespace :shopperly do
  desc "TODO"
  task seed_categories: :environment do
    #drop the old table data before importing the new stuff
    Categories.destroy_all

    CSV.foreach("lib/assets/product_categories.csv", :headers =>true) do |row |
      # puts row.inspect #just so that we know the file's being read

      if !Categories.exists?(name: row[2])
        #create new model instances with the data
        Categories.create!(
        name: row[0]
        )
      end
    end
end

 
 task seed_products: :environment do

    #drop the old table data before importing the new stuff
    Products.destroy_all

    CSV.foreach("lib/assets/flipkart_com-ecommerce_sample.csv", :headers =>true) do |row |
      # puts row.inspect #just so that we know the file's being read
      categories_name = row[5]
       

        # puts "country_temp: " + country_temp
        categories = Categories.where(["name = ?", categories_name]).first
        Products.create!(
        categories_id: categories.id,
        name: row[0],
        description: row[1],
        image: row[2],
        price: row[3],
        brand: row[4]
        )
   end
end

 task seed_countries: :environment do
    #drop the old table data before importing the new stuff
    Countries.destroy_all

    CSV.foreach("lib/assets/Countries.csv", :headers =>true) do |row |
      # puts row.inspect #just so that we know the file's being read

      if !Countries.exists?(name: row[0])
        #create new model instances with the data
        Countries.create!(
        name: row[0]
        )
      end
    end
end

end
