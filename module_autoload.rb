module M4
  autoload(:M1, "./modules.rb")
  p M1::C1
  p M2::C2
end

#p M4::M1::C0
#


p global_variables

p $LOAD_PATH

p $:


p $"
