.class Lcom/android/server/fingerprint/AuthenticationClient$7;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/AuthenticationClient;->lambda$handleSystemUIEventForInDisplaySensor$4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$7;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$7;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/fingerprint/AuthenticationClient;->semShowFingerIcon(I)V
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$400(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    return-void
.end method
