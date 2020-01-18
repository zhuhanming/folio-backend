class RenamePagejsonToPageJson < ActiveRecord::Migration[6.0]
  def change
    rename_column :pages, :pagejson, :page_json
  end
end
