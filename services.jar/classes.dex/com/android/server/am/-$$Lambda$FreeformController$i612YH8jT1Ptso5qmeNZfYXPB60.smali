.class public final synthetic Lcom/android/server/am/-$$Lambda$FreeformController$i612YH8jT1Ptso5qmeNZfYXPB60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$FreeformController$i612YH8jT1Ptso5qmeNZfYXPB60;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$FreeformController$i612YH8jT1Ptso5qmeNZfYXPB60;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$FreeformController$i612YH8jT1Ptso5qmeNZfYXPB60;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$FreeformController$i612YH8jT1Ptso5qmeNZfYXPB60;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/FreeformController;->lambda$minimizeMaxCountingFreeformLocked$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
