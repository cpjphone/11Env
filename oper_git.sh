#  ------------------------------------------------------------------*
# @file    oper_git.sh
# @date    2019-12-02
# @author  七月
# @brief  help git 
#  ------------------------------------------------------------------*
#
#  ------------------------------------------------------------------
# @brief	help 
#  ------------------------------------------------------------------*/
git_help()
{
	echo "./oper_git.sh rebase : 同步最新厂库"
	echo "./oper_git.sh push : 提交修改到厂库"
    git status
}
#  ------------------------------------------------------------------
# @brief	sync repository 
#  ------------------------------------------------------------------*/
git_rebase()
{
    git clean -df
    git checkout -f
     ./../pull.sh
}

#  ------------------------------------------------------------------
# @brief	merge your changes
#  ------------------------------------------------------------------*/
git_merge()
{
	git status
	read -r -p "是否继续提交? [Y/n] " input
	case $input in
		[yY][eE][sS]|[yY])
			echo "继续提交"
			git add --all
			echo "输入提交信息:"
			echo "1:修改后端"
			echo "2:修改前端"
			echo "3:修改算法"
			echo "4:修改环境"
			echo "其他：自由编写commit信息"
			read Buf_commit
            if [ 1 == "$Buf_commit" ];then
                git commit -m "修改后端"
            elif [ 2 == "$Buf_commit" ];then
                git commit -m "修改前端"
            elif [ 3 == "$Buf_commit" ];then
                git commit -m "修改算法" 
            elif [ 4 == "$Buf_commit" ];then
                git commit -m "修改环境"  
            else 
                git commit -m "$Buf_commit"
            fi
            ./../push.sh
            exit 1
			;;

		[nN][oO]|[nN])
			echo "中断提交"
			exit 1
				;;

		*)
		echo "输入错误，请重新输入"
		;;
	esac
}
#  ------------------------------------------------------------------
  # @brief       loop check device node
#  ------------------------------------------------------------------*/

if [ ! -n "$1" ] ;then
git_help
fi

if [ rebase == "$1" ];then
git_rebase
fi

if [ push == "$1" ];then
git_merge
fi

