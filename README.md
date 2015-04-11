AssociationSoftBuild
====================

AssociationSoftBuild extends ActiveRecord to provide the possibility to build an association without affecting to the parent object.

# The problem

Lets imagine that we need to render something like this:

```haml
.label New Comment
= simple_form_for post.comments.build do |f|
  = f.input :post_id, as: :hidden
  = f.input :body
  = f.submit

.label Existing comments
%ul
  - post.comments.each do |comment|
    %li= simple_format(comment.body)
```

Unfortunately, the native relation's `build` method will add the new
object to parent object's association set. In or case, the blank
comment will appear in "Existing comments" list.

# Solution

 AssociationSoftBuild adds the `soft_build` method to relations, which doing all the same as native `build`, but not affects to parent object.
