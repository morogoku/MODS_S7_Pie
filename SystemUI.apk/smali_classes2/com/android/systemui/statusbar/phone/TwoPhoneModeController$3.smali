.class Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;
.super Ljava/lang/Object;
.source "TwoPhoneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->isTwoPhoneUserCreated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x112006c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string v3, "StatusBar.TwoPhoneModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTwoPhoneMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f08074c

    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "two_call_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$202(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "two_sms_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$302(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "two_account"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$402(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "two_register"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_5

    move v5, v1

    goto :goto_5

    :cond_5
    move v5, v2

    :goto_5
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$502(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    const-string v4, "StatusBar.TwoPhoneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", msgEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$300(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", userCreated:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", registered:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "TwoPhoneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$300(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    invoke-static {v4, v1, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$600(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$300(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f08074a

    goto :goto_7

    :cond_a
    const v2, 0x7f08074b

    :goto_7
    move v3, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$600(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    goto :goto_8

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    const v4, 0x7f08074a

    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$600(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    goto :goto_8

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$600(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    :goto_8
    return-void
.end method
