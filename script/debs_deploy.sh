#!/bin/bash

set -x

# Configuration variables
SIG_FILE_NAME="${SIG_FILE_NAME:-commschamp.asc}"
PPA_BRANCH="${PPA_BRANCH:-ppa}"

FROM="${1}"

if [ -z "${FROM}" -o ! -e "${FROM}" ]; then
    echo "ERROR: Provide existing directory as script's argument"
    exit 1
fi

if [ ! -e "${FROM}/${SIG_FILE_NAME}" ]; then
    echo "ERROR: Provided directory ${FROM} doesn't contain signature file ${SIG_FILE_NAME}, doesn't seem to contain legit repo structure"
    exit 1
fi

set -euo pipefail

REPO_DIR="$(git rev-parse --show-toplevel)"
WORKTREE="$(mktemp -d)"

cleanup()
{
    git -C "${REPO_DIR}" worktree remove --force "${WORKTREE}" 2>/dev/null || true
    rmdir "$WORKTREE" 2>/dev/null || true
}
trap cleanup EXIT

pushd "${REPO_DIR}"

git fetch origin ${PPA_BRANCH}

git worktree add --detach "$WORKTREE" origin/${PPA_BRANCH}

pushd "${WORKTREE}"

# Remove the old published repository.
git rm -rf .
git clean -fdx

# Install the newly generated aptly repository.
cp -a "$FROM"/* ./

# Prevent GitHub Pages/Jekyll processing.
touch .nojekyll

git add .

git status

git commit -m "Publish APT repository"

git push --force origin HEAD:${PPA_BRANCH}

popd # "${WORKTREE}"
popd # "${REPO_DIR}"
