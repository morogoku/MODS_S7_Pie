.class Lcom/android/systemui/keyguard/KeyguardViewMediator$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 5

    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$002(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$002(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$002(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    goto :goto_0

    :cond_0
    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
