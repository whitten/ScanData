# Encoding: utf-8
# Change hash to digest
class ChangeHashToDigest < ActiveRecord::Migration
  def self.up
    rename_column :submissions, :hash, :digest
  end
  def self.down
    rename_column :submissions, :digest, :hash
  end
end
