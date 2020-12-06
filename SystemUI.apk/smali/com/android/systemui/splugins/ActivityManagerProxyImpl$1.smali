.class Lcom/android/systemui/splugins/ActivityManagerProxyImpl$1;
.super Landroid/app/UserSwitchObserver;
.source "ActivityManagerProxyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/splugins/ActivityManagerProxyImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/splugins/ActivityManagerProxyImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl$1;->this$0:Lcom/android/systemui/splugins/ActivityManagerProxyImpl;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl$1;->this$0:Lcom/android/systemui/splugins/ActivityManagerProxyImpl;

    iput p1, v0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->mUserId:I

    invoke-static {}, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl$1;->this$0:Lcom/android/systemui/splugins/ActivityManagerProxyImpl;

    iget v2, v2, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
