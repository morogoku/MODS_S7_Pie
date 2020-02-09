.class public Landroidx/car/widget/AlphaJumpBucketer$Bucket;
.super Ljava/lang/Object;
.source "AlphaJumpBucketer.java"

# interfaces
.implements Landroidx/car/widget/IAlphaJumpAdapter$Bucket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/AlphaJumpBucketer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation


# instance fields
.field private mIndex:I

.field private mIsEmpty:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mStringMatcher:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/widget/AlphaJumpBucketer$Bucket;->mLabel:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/car/widget/AlphaJumpBucketer$Bucket;->mIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/widget/AlphaJumpBucketer$Bucket;->mIsEmpty:Z

    iput-object p2, p0, Landroidx/car/widget/AlphaJumpBucketer$Bucket;->mStringMatcher:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Landroidx/car/widget/AlphaJumpBucketer$Bucket;->mIndex:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/AlphaJumpBucketer$Bucket;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/car/widget/AlphaJumpBucketer$Bucket;->mIsEmpty:Z

    return v0
.end method
