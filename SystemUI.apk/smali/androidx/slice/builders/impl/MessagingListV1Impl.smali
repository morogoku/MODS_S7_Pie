.class public Landroidx/slice/builders/impl/MessagingListV1Impl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;
    }
.end annotation


# instance fields
.field private final mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl;

    invoke-direct {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilderV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl;

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->setTtl(J)V

    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl;

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method
