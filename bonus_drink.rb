class BonusDrink
  def self.total_count_for(amount)
    # 最初にamount数だけ飲む
    count = empty = amount

    # 空のボトルが交換できなくなるまで続ける
    while (additional = empty / 3) > 0
      count += additional
      # 空のボトルは交換できなかった分 + 今回飲んだ分
      empty = empty % 3 + additional
    end

    count
  end
end