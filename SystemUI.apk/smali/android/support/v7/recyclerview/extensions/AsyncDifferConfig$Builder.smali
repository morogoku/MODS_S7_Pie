.class public final Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
.super Ljava/lang/Object;
.source "AsyncDifferConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sDiffExecutor:Ljava/util/concurrent/Executor;

.field private static final sExecutorLock:Ljava/lang/Object;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;

    invoke-direct {v1, v0}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;-><init>(Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$1;)V

    sput-object v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
