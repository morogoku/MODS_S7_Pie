.class public final synthetic Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$LPiVzPOZYpOEeXVS6DLB3mIX1ng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/MultiDisplayManagerService;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$LPiVzPOZYpOEeXVS6DLB3mIX1ng;->f$0:Lcom/android/server/am/MultiDisplayManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$LPiVzPOZYpOEeXVS6DLB3mIX1ng;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$LPiVzPOZYpOEeXVS6DLB3mIX1ng;->f$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$LPiVzPOZYpOEeXVS6DLB3mIX1ng;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->lambda$checkDexLaunchPolicyLocked$1(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V

    return-void
.end method
