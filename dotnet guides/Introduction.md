# A Guide to Writing Scalable and Efficient C#/ASP.NET Code

----

Authors: ['Barak Imam](https://github.com/mimam419)

Date Created: Monday, 2nd March 2020

Last Modified: Barak Imam

## Introduction

[C#](https://en.wikipedia.org/wiki/C_Sharp_%28programming_language%29) is a compiled statically types language developed at Microsoft in 2000, while [.NET](https://en.wikipedia.org/wiki/.NET_Framework) is a set of standard libraries (framework) for building applications in C#. It is has been very successful over the years, both at start-ups and large conglomerates.

[ASP.NET](https://dotnet.microsoft.com/apps/aspnet) is used extensively in many sectors including FinTech (see our banks), it is also noteworthy to mention that the main backend at every engineers' most beloved social media site, [StackOverflow](https://stackshare.io/stack-overflow/stack-overflow) runs on [ASP.NET Core](https://www.youtube.com/watch?v=Zr25JuCDCjQ).

Writing scalable and efficient C# is a hard and easy task at the same time. It is hard when there are no processes that guides the work you do, but easy when the processes, guidelines, and rules are already well designed, debated and agreed upon.

Over the years, it is well-known that of the main causes of bottleneck in web services is [latency](https://www.keycdn.com/support/what-is-latency) and [throughput](https://testguild.com/performance-testing-what-is-throughput/), and the major cause of latency in back-end applications is database and third-party services.

On third-party services, several efforts has been made and the most remarkable among them is the invention of [HTTP/2.0](https://http2.github.io/) and the in-development [HTTP/3.0 (QUIC)](https://http3.net/). While we cannot really drive the adoption of the new HTTP implementations (we have a lot of partners who maintain legacy systems), we can drive the adoption in internal services. Another good solution in this area is the [GRPC](https://grpc.io/) (A story for another day).

On database, it is surprising how ORMs has made software developers lazy, and tools like EF and EF Core have not made folks realize the importance of fast and efficient database operations in web services.
FAST in the sense that the operations takes as little time as possible on the database engine to process it, EFFICIENT means that we make the least number of calls to the database.

## .NET Development at NIBSS

.NET is thriving at NIBSS, and some of the notable .NET backed solutions include TSA, GSI and most recently CARP API.

Our engineers have been meticuluous all along, but in a need to unify our processes, and ultimately enable the best onboarding experience process for future engineering hires. It is important that we document our culture as a team, and conciously drive the adoption and compliance in new and existing projects.

## Our StyleGuide

We run a [SonarCloud](https://sonarcloud.io/organizations/nibss-dev/projects) integration, which currently houses our styleguide in computer readable form.

The important bits are that we follow best practices regarding comments on our code, and also align our code with best practices as suggested in [David Fowler](https://github.com/davidfowl)'s [Common Pitfalls writing scalable services in ASP.NET Core](https://github.com/davidfowl/AspNetCoreDiagnosticScenarios).

Notable among our predefined guidelines are

<!-- TODO: to be completed -->
- [x] naming guidelines

## Why you should comply

Our goal as a team is to be a reference for High Productive Teams in NIBSS, and here are some examples on how our compliance is tied to acheiving that goal.

- **Business Impact**: Great running code is useless without business impact, imagine refactoring some bunch of code that drives RAM usage on our servers down by 30%, that gives us more room to handle more requests, and ultimately make more money by spending less.

- **Reduce Churn Rate**: While [Churn](https://waydev.co/code-churn/) is not actually bad, it could be a signal for poor team productivity.

    What do you feel about a team, where the longest living code was written three months ago?

    How does it feel to be that engineer whose code has been on the codebase for more than 10years?

- **A Cohesive Team**: Following this laid down rules will greatly improve our team cohesiveness, and at some point, our applications will look similar, and engineers will find it easy to cross-carpet from one app to another.

## Driving Compliance

We currently have ONLY TWO methods right now to drive compliance:

- **Code Authors**: We believe that **YOU WILL DO THE RIGHT THING AT ALL TIMES**.

- **PR Reviewers**: Set your colleagues straight when they err, a great team is better than a poor team with one great engineer.
