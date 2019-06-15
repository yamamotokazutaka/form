class FormsController < ApplicationController
  def index
    @people = Person.all
  end
  def show
    @person = Person.find_by(id: params[:id])
  end
  def new
  end

  def create
    @person = Person.new(name: params[:name],age: params[:age],condition: params[:condition],other: params[:other])
    @person.save
    redirect_to("/")
  end

  def edit
    @person = Person.find_by(id:params[:id])
  end

  def update
    @person = Person.find_by(id:params[:id])
    @person.name = params[:name]
    @person.age = params[:age]
    @person.condition = params[:condition]
    @person.other = params[:other]
    @person.save
    redirect_to("/forms/#{@person.id}")
  end

  def destroy
    @person = Person.find_by(id:params[:id])
    @person.destroy
    redirect_to("/")
  end
end
