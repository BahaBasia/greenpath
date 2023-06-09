module ApplicationHelper

  # scoring system for the badges and the carbon savings rendered in community page and dashboard tree.
  def carbon_badge(carbon_savings)
    if carbon_savings == 0 && carbon_savings < 100
      { icon: 'seedling',
        tree: "https://assets4.lottiefiles.com/packages/lf20_o32VvNhBlv.json",
        level: "Seed Badge Owner, start your journey and unlock the Bronze Badge!" }
    elsif carbon_savings < 500
      { icon: 'award',
        tree: "https://assets4.lottiefiles.com/packages/lf20_e3ux72wx.json",
        level: "Level 2! Reach over 500 points and unlock the Silver Badge!"}
    elsif carbon_savings >= 500 && carbon_savings < 1000
      { icon: 'medal',
        tree: "https://assets4.lottiefiles.com/private_files/lf30_vfgwrgqf.json",
        level: "Level 3! Reach over 1000 points and unlock the Golden Badge!"}
    else
      { icon: 'trophy',
        tree: "https://assets3.lottiefiles.com/private_files/lf30_jdygihq2.json",
        level: "You are on the Level 4! Golden Badge unlocked!" }
    end
  end
end
