from looker_sdk import client, models
import sys

sdk = client.setup()

def main():
    print(sys.argv)
    broken_content_prod = sdk.content_validation().content_with_errors
    
    """Enter dev mode """
    sdk.update_session(models.WriteApiSession(workspace_id='dev'))
    
    """ Check out this branch """
    sdk.update_git_branch(project_id="my_fruit_basket2", body=models.WriteGitBranch(name=sys.argv[1]))

    broken_content_dev = sdk.content_validation().content_with_errors

    # Assert no new errors introduced in dev branch
    assert len(broken_content_dev) - len(broken_content_prod) <= 0, """
        Uh oh. you just introduced a new content error!"""

main()
