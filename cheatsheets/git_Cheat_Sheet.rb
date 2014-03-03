cheatsheet do
	title 'git Cheat Sheet'
	docset_file_name 'git_Cheat_Sheet'
	keyword 'git-cheatsheet'
	source_url 'http://cheat.kapeli.com'
	
	category do
		id 'Create'
		
		entry do
			name 'Clone an existing repository'
			notes '`git clone ssh://user@domain.tld/repo.git`'
		end
		
		entry do
			name 'Clone an existing repository and all its sub-modules recursively'
			notes '`git clone --recursive ssh://user@domain.tld/repo.git`'
		end
		
		entry do
			name 'Create a new local repository'
			notes '`git init`'
		end	
	end
	
	category do
		id 'Local Changes'
		
		entry do
			name 'Changed files in your working directory'	
			notes '`git status`'
		end
		
		entry do
			name 'Changes to tracked files'
			notes '`git diff`'
		end
		
		entry do
			name 'Add all current changes to the next commit'
			notes '`git add .`'
		end
		
		entry do
			name 'Add some changes in `<file>` to the next commit'
			notes '`git add -p <file>`'
		end
		
		entry do
			name 'Commit all local changes in tracked files'
			notes '`git commit -a`'
		end
		
		entry do
			name 'Commit previously staged changes'
			notes '`git commit`'
		end
		
		entry do
			name 'Change the last commit (_Don\'t amend published commits!_)'
			notes '`git commit --amend`'
		end
	end
	
	category do
		id 'Commit History'
		
		entry do
			name 'Show all commits, starting with newest'
			notes '`git log`'
		end
		
		entry do
			name 'Show changes over time for a specific `<file>`'
			notes '`git log -p <file>`'
		end
		
		entry do
			name 'Who changed what and when in `<file>`'
			notes '`git blame <file>`'
		end
	end
	
	category do
		id 'Branches & Tags'
		
		entry do
			name 'List all existing branches'
			notes '`git branch`'
		end
		
		entry do
			name 'Switch HEAD `<branch>`'
			notes '`git checkout <branch>`'
		end
		
		entry do
			name 'Create a `<new-branch>` based on your current HEAD'
			notes '`git branch <new-branch>`'
		end
		
		entry do
			name 'Create a new tracking branch based on a remote branch'
			notes '`git branch --track <new-branch> <remote-branch>`'
		end
		
		entry do
			name 'Delete a local `<branch>`'
			notes '`git branch -d <branch>`'
		end
		
		entry do
			name 'Make the current commit with a tag'
			notes '`git tag <tag-name>`'
		end
	end
	
	category do
		id 'Update & Publish'
		
		entry do
			name 'List all currently configured remotes'
			notes '`git remote -v`'
		end
		
		entry do
			name 'Show information about a remote'
			notes '`git remote show <remote>`'
		end
		
		entry do
			name 'Add new remote repository, named `<remote>`'
			notes '`git remote add <remote> <url>`'
		end
		
		entry do
			name 'Download all changes from `<remote>`, but don\'t integrate into HEAD'
			notes '`git fetch <remote>`'
		end
		
		entry do
			name 'Download changes and directly merge/integrate into HEAD'
			notes '`git pull <remote> <branch>`'
		end
		
		entry do
			name 'Publish local changes on a remote'
			notes '`git push <remote> <branch>`'
		end
		
		entry do
			name 'Delete a branch on the remote'
			notes '`git push <remote> :<branch>`'
		end
		
		entry do
			name 'Publish your tags'
			notes '`git push --tags`'
		end
	end
	
	category do
		id 'Merge & Rebase'
		
		entry do
			name 'Merge `<branch>` into your current HEAD'
			notes '`git merge <branch>`'
		end
		
		entry do
			name 'Rebase your current HEAD onto `<branch>` (_Don\'t rebase published commits!)'
			notes '`git rebase <branch>`'
		end
		
		entry do
			name 'Abort a rebase'
			notes '`git rebase --abort`'
		end
		
		entry do
			name 'Continue a rebase after resolving conflicts'
			notes '`git rebase --continue`'
		end
		
		entry do
			name 'Use your configured merge tool to solve conflicts'
			notes '`git mergetool`'
		end
		
		entry do
			name 'Use your editor to manually solve conflichts and (after resolving) mark file as resolved'
			notes <<-'END'
				```bash
				git add <resolved-file>
				git rm <resolved-file>
				```
			END
		end
		
		
	end
	
	category do
		id 'Undo'
		
		entry do
			name 'Discard all local changes in your working directory'
			notes '`git reset --hard HEAD`'
		end
		
		entry do
			name 'Discard local changes in a specific `<file>`'
			notes '`git checkout HEAD <file>`'
		end
		
		entry do
			name 'Revert a `<commit>` (by providing a new commit with contrary changes)'
			notes '`git revert <commit>`'
		end
		
		entry do
			name <<-'END'
				Reset your HEAD pointer to a previous `<commit>`
				
				… and discard all changes since then
			END
			notes '`git reset --hard <commit>`'
		end
		
		entry do
			name '… and preserve all changes as unstaged changes'
			notes '`git reset <commit>`'
		end
		
		entry do
			name '… and preserve uncommitted local changes'
			notes '`git reset --keep <commit>`'
		end
	end
	
	notes <<-'END'
		* This cheat sheet is heavily based on the great cheat sheet from [Tower.app](http://www.git-tower.com/). The original can be found [here](http://www.git-tower.com/blog/git-cheat-sheet/).
		* Converted and extended by [Jens Kohl](https://github.com/jk).
	END
end