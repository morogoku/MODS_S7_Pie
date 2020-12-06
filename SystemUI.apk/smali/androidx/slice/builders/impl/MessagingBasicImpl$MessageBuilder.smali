.class public final Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/MessagingBasicImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageBuilder"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Icon;
    .annotation build Landroid/support/annotation/RequiresApi;
    .end annotation
.end field

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method static synthetic access$000(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0

    return-void
.end method
