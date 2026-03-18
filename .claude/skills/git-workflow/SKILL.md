---
name: git-workflow
description: コードの変更・コミット・PRを作成するときのGitワークフローガイドライン。変更の粒度、コミットメッセージの形式、PRの作成方法を定める。
---

# Gitワークフローガイドライン

## ブランチの作成

コードを変更する前に、worktreeを作成して新しいブランチで作業する。ブランチ名はプロジェクトの命名規則に従うこと。不明な場合はユーザーに確認する。

```bash
# デフォルトブランチを最新化する
git fetch origin && git checkout <default-branch> && git pull

# worktreeを作成する
git worktree add .claude/worktrees/<branch-name> -b <branch-name>
```

## コミット・PRの粒度

コミットとPRは**一つの関心事に絞る**。複数の目的が混在する変更は分割する。

## コミットメッセージ

- **タイトル**: 変更の概要を日本語で40文字以内
- **本文**: 空行を挟み、変更をおこなった理由を記述

## Pull Requestの作成

`.github/PULL_REQUEST_TEMPLATE.md` が存在する場合はそのテンプレートに沿って本文を作成する。PR本文末尾には必ず以下を追記する：

```
🤖 Generated with [Claude Code](https://claude.com/claude-code)
```

```bash
gh pr create \
  --base <base-branch> \
  --title "タイトル" \
  --body "$(cat <<'EOF'
<!-- テンプレートの内容 -->

🤖 Generated with [Claude Code](https://claude.com/claude-code)
EOF
)"
```
