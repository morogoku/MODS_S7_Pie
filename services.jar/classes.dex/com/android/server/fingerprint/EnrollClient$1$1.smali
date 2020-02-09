.class Lcom/android/server/fingerprint/EnrollClient$1$1;
.super Ljava/lang/Object;
.source "EnrollClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/EnrollClient$1;->onDialogDismissed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/EnrollClient$1;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/EnrollClient$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/EnrollClient$1$1;->this$1:Lcom/android/server/fingerprint/EnrollClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient$1$1;->this$1:Lcom/android/server/fingerprint/EnrollClient$1;

    iget-object v0, v0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    # getter for: Lcom/android/server/fingerprint/EnrollClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;
    invoke-static {v0}, Lcom/android/server/fingerprint/EnrollClient;->access$000(Lcom/android/server/fingerprint/EnrollClient;)Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleSensorView(Z)V

    :cond_10
    return-void
.end method
