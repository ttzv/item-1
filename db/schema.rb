# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_18_081008) do

  create_table "ad_user_headers", force: :cascade do |t|
    t.string "name"
    t.string "name_en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ad_users", force: :cascade do |t|
    t.string "dn"
    t.string "objectclass"
    t.string "cn"
    t.text "description"
    t.string "distinguishedname"
    t.string "instancetype"
    t.date "whencreated"
    t.date "whenchanged"
    t.string "usncreated"
    t.string "memberof"
    t.string "usnchanged"
    t.string "name"
    t.string "objectguid"
    t.string "useraccountcontrol"
    t.string "badpwdcount"
    t.string "codepage"
    t.string "countrycode"
    t.date "badpasswordtime"
    t.date "lastlogoff"
    t.date "lastlogon"
    t.string "logonhours"
    t.date "pwdlastset"
    t.string "primarygroupid"
    t.string "objectsid"
    t.string "admincount"
    t.date "accountexpires"
    t.string "logoncount"
    t.string "samaccountname"
    t.string "samaccounttype"
    t.date "lockouttime"
    t.string "objectcategory"
    t.string "iscriticalsystemobject"
    t.string "dscorepropagationdata"
    t.date "lastlogontimestamp"
    t.string "msds-supportedencryptiontypes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "sn"
    t.string "givenname"
    t.string "displayname"
    t.string "mail"
    t.string "userprincipalname"
  end

end