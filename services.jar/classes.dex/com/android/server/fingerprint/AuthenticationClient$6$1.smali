.class Lcom/android/server/fingerprint/AuthenticationClient$6$1;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/AuthenticationClient$6;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/AuthenticationClient$6;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient$6;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$6$1;->this$1:Lcom/android/server/fingerprint/AuthenticationClient$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6$1;->this$1:Lcom/android/server/fingerprint/AuthenticationClient$6;

    iget-object v0, v0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/fingerprint/AuthenticationClient;->semShowFingerIcon(I)V
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$400(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    return-void
.end method
