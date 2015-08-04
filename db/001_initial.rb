Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
    end

    create_table(:fridges) do
      primary_key :id
      foreign_key :user_id, :users
    end

    create_table(:ingredients) do
      primary_key :id
      foreign_key :user_id, :users
      String :name, :null => false
      Integer :quantity, :null => false
      Date :use_by
    end

    create_table(:recipes) do
      primary_key :id
      foreign_key :user_id, :users
      String :name, :null => false
    end

    create_table(:fridges_ingredients) do
      primary_key :id
      foreign_key :fridge_id, :fridges
      foreign_key :ingredients_id, :ingredients
    end

    create_table(:recipes_ingredients) do
      primary_key :id
      foreign_key :recipe_id, :recipes
      foreign_key :ingredients_id, :ingredients
    end
  end
end
