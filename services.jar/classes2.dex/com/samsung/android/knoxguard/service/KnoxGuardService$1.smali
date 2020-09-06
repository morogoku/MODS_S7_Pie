.class Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;
.super Ljava/lang/Object;
.source "KnoxGuardService.java"

# interfaces
.implements Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/service/KnoxGuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knoxguard/service/KnoxGuardService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;->this$0:Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlockedByPasscode()V
    .registers 6

    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onUnlockedByPasscode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;->this$0:Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    # getter for: Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->access$100(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.kgclient.android.intent.action.MANUAL_UNLOCK"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
