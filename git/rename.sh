#!/bin/bash

# Định nghĩa mảng tên file gốc
old_names=(
"1_0_0_0_GioiThieuGitCommit.md"
"1_0_0_0_Practice.md"
"1_0_0_1_ReNhanhVoiGit.md"
"1_0_0_2_GopNhanhTrongGit.md"
"1_0_0_3_GioiThieuVeRebase.md"
"1_0_1_0_ThaoDauCaiNao.md"
"1_0_1_1_ThamChieuTuongDoi.md"
"1_0_1_2_ThamChieuTuongDoi.md"
"1_0_1_3_HoanTacThayDoiTrongGit.md"
"1_0_2_0_GioiThieuVeCherryPick.md"
"1_0_2_1_GioiThieuVeRebaseTuongTac.md"
"1_0_3_0_ChiLay1Commit.md"
"1_0_3_1_TungHungCommit.md"
"1_0_3_2_TungHungCommit.md"
"1_0_3_3_TagTrongGit.md"
"1_0_3_4_GitDescribe.md"
"1_0_4_0_RebaseHon9000Lan.md"
"1_0_4_1_NhieuChaLamMe.md"
"1_0_4_2_NhanhRoiNhuCanhHe.md"
"1_1_0_0_GioiThieuVeClone.md"
"1_1_0_1_NhanhTuXa.md"
"1_1_0_2_GitFetch.md"
"1_1_0_3_GitPull.md"
"1_1_0_4_GiaLapLamViecNhom.md"
"1_1_0_5_GitPush.md"
"1_1_0_6_DiBietLichSu.md"
"1_1_0_7_LockedMain.md"
"1_1_1_0_PushMain.md"
"1_1_1_1_HopNhatNhanhTuXa.md"
"1_1_1_2_TheoDoiTuXa.md"
"1_1_1_3_ThamSoGitPush.md"
"1_1_1_4_ThamSoGitPush.md"
"1_1_1_5_ThamSoFetch.md"
"1_1_1_6_KhonCoNguon.md"
"1_1_1_7_ThamSoPull.md"
)

# Định nghĩa mảng tên file mới tương ứng
new_names=(
"1_1_1_1_GioiThieuGitCommit.md"
"1_0_0_0_Practice.md"
"1_1_1_2_ReNhanhVoiGit.md"
"1_1_1_3_GopNhanhTrongGit.md"
"1_1_1_4_GioiThieuVeRebase.md"
"1_1_2_1_ThaoDauCaiNao.md"
"1_1_2_2_ThamChieuTuongDoi.md"
"1_1_2_3_ThamChieuTuongDoi.md"
"1_1_2_4_HoanTacThayDoiTrongGit.md"
"1_1_3_1_GioiThieuVeCherryPick.md"
"1_1_3_2_GioiThieuVeRebaseTuongTac.md"
"1_1_4_1_ChiLay1Commit.md"
"1_1_4_2_TungHungCommit.md"
"1_1_4_3_TungHungCommit.md"
"1_1_4_4_TagTrongGit.md"
"1_1_4_5_GitDescribe.md"
"1_1_5_1_RebaseHon9000Lan.md"
"1_1_5_2_NhieuChaLamMe.md"
"1_1_5_3_NhanhRoiNhuCanhHe.md"
"1_2_1_1_GioiThieuVeClone.md"
"1_2_1_2_NhanhTuXa.md"
"1_2_1_3_GitFetch.md"
"1_2_1_4_GitPull.md"
"1_2_1_5_GiaLapLamViecNhom.md"
"1_2_1_6_GitPush.md"
"1_2_1_7_DiBietLichSu.md"
"1_2_1_8_LockedMain.md"
"1_2_2_1_PushMain.md"
"1_2_2_2_HopNhatNhanhTuXa.md"
"1_2_2_3_TheoDoiTuXa.md"
"1_2_2_4_ThamSoGitPush.md"
"1_2_2_5_ThamSoGitPush.md"
"1_2_2_6_ThamSoFetch.md"
"1_2_2_7_KhonCoNguon.md"
"1_2_2_8_ThamSoPull.md"
)

# Kiểm tra xem hai mảng có cùng số phần tử hay không
if [ ${#old_names[@]} -ne ${#new_names[@]} ]; then
  echo "Hai mảng không có cùng số lượng phần tử. Vui lòng kiểm tra lại."
  exit 1
fi

# Duyệt qua các phần tử của mảng và đổi tên file
for i in "${!old_names[@]}"; do
  old_name="${old_names[$i]}"
  new_name="${new_names[$i]}"

  if [ -e "$old_name" ]; then
    mv "$old_name" "$new_name"
    echo "Đã đổi tên '$old_name' thành '$new_name'."
  else
    echo "File '$old_name' không tồn tại."
  fi
done
