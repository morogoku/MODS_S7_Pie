.class public Landroidx/slice/builders/MessagingSliceBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "MessagingSliceBuilder.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;
    }
.end annotation


# instance fields
.field private mBuilder:Landroidx/slice/builders/impl/MessagingBuilder;


# virtual methods
.method protected selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    sget-object v0, Landroidx/slice/SliceSpecs;->MESSAGING:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/MessagingSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slice/builders/impl/MessagingV1Impl;

    invoke-virtual {p0}, Landroidx/slice/builders/MessagingSliceBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->MESSAGING:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/MessagingV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    :cond_0
    sget-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/MessagingSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/slice/builders/impl/MessagingListV1Impl;

    invoke-virtual {p0}, Landroidx/slice/builders/MessagingSliceBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/MessagingListV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    :cond_1
    sget-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/MessagingSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/slice/builders/impl/MessagingBasicImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/MessagingSliceBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/MessagingBasicImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/MessagingBuilder;

    iput-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder;->mBuilder:Landroidx/slice/builders/impl/MessagingBuilder;

    return-void
.end method
