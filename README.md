# DelegationExample

### This app demonstrates the delegate pattern and has an accompanying article at https://medium.com/geekculture/getting-started-with-swifts-delegate-pattern

The main branch is a starter project, and the final branch is the completed project. The goal is to create a pattern that allows the detail view controller 
to report back to its parent (in this case, but it could be any unrelated class that's in memory that conforms to the protocol). This is done without creating 
a retain cycle, and by only exposing the method that needs to be exposed.
