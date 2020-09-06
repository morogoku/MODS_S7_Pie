.class public final synthetic Lcom/android/server/am/-$$Lambda$LockTaskController$Zhl6tnPVZ0fqlHHpQJtB80h6FmA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/LockTaskController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/LockTaskController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$Zhl6tnPVZ0fqlHHpQJtB80h6FmA;->f$0:Lcom/android/server/am/LockTaskController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$Zhl6tnPVZ0fqlHHpQJtB80h6FmA;->f$0:Lcom/android/server/am/LockTaskController;

    invoke-static {v0}, Lcom/android/server/am/LockTaskController;->lambda$performStopLockTask$1(Lcom/android/server/am/LockTaskController;)V

    return-void
.end method
