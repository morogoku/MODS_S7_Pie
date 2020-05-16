.class Lcom/android/systemui/qs/customize/SecQSCustomizer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecQSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecQSCustomizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenTurnedOff  mIsClosing ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-boolean v2, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isShown ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->hide(II)V

    :cond_0
    return-void
.end method
