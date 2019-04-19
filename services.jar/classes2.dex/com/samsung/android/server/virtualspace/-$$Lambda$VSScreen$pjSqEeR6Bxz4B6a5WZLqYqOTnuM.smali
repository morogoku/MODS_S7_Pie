.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pjSqEeR6Bxz4B6a5WZLqYqOTnuM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pjSqEeR6Bxz4B6a5WZLqYqOTnuM;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iput p2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pjSqEeR6Bxz4B6a5WZLqYqOTnuM;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pjSqEeR6Bxz4B6a5WZLqYqOTnuM;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pjSqEeR6Bxz4B6a5WZLqYqOTnuM;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pjSqEeR6Bxz4B6a5WZLqYqOTnuM;->f$1:I

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$pjSqEeR6Bxz4B6a5WZLqYqOTnuM;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$redirectSystemWindows$12(Lcom/samsung/android/server/virtualspace/VSScreen;IZ)V

    return-void
.end method
