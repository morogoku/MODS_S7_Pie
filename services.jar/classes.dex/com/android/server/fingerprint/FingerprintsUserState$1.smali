.class Lcom/android/server/fingerprint/FingerprintsUserState$1;
.super Landroid/database/ContentObserver;
.source "FingerprintsUserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintsUserState;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintsUserState;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintsUserState;Landroid/os/Handler;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintsUserState$1;->this$0:Lcom/android/server/fingerprint/FingerprintsUserState;

    iput p3, p0, Lcom/android/server/fingerprint/FingerprintsUserState$1;->val$userId:I

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState$1;->this$0:Lcom/android/server/fingerprint/FingerprintsUserState;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState$1;->this$0:Lcom/android/server/fingerprint/FingerprintsUserState;

    # getter for: Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintsUserState;->access$100(Lcom/android/server/fingerprint/FingerprintsUserState;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_adaptive_icon"

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintsUserState$1;->val$userId:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v4

    :goto_1b
    # setter for: Lcom/android/server/fingerprint/FingerprintsUserState;->mIsAdaptiveIconEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/fingerprint/FingerprintsUserState;->access$002(Lcom/android/server/fingerprint/FingerprintsUserState;Z)Z

    const-string v0, "FingerprintState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdaptiveIcon Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState$1;->this$0:Lcom/android/server/fingerprint/FingerprintsUserState;

    # getter for: Lcom/android/server/fingerprint/FingerprintsUserState;->mIsAdaptiveIconEnabled:Z
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintsUserState;->access$000(Lcom/android/server/fingerprint/FingerprintsUserState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
