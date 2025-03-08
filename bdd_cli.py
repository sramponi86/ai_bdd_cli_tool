import subprocess
import click

# CLI tool using Click for handling commands
@click.command()
@click.option('--feature', prompt="Enter feature description", help="Describe the feature for BDD scenario generation")
def generate_bdd(feature):
    """
    Generates BDD test scenarios using LLaMA 3.2 (Ollama).
    """

    # Define prompt for LLaMA
    prompt = f"""
    You are a software tester specializing in Behavior-Driven Development (BDD). 
    Generate Gherkin-style BDD test scenarios for the given feature.

    Feature: {feature}

    Output format:
    ```
    Feature: {feature}
    
    Scenario: [Meaningful scenario title]
      Given [initial condition]
      When [action performed]
      Then [expected outcome]
    ```

    Provide at least 3 scenarios, in valid Gherkin syntax.
    """

    try:
        # Call Ollama LLaMA 3.2 to generate the BDD scenarios
        result = subprocess.run(
            ["ollama", "run", "llama3.2", prompt],
            capture_output=True,
            text=True
        )

        # Extract response
        response = result.stdout.strip()

        # Print generated BDD scenarios
        print("\n📝 Generated BDD Test Scenarios:\n")
        print(response)

        # Save to file
        with open("generated_bdd.feature", "w") as f:
            f.write(response)

        print("\n✅ BDD scenarios saved to `generated_bdd.feature`")

    except Exception as e:
        print(f"❌ Error: {e}")

if __name__ == "__main__":
    generate_bdd()
