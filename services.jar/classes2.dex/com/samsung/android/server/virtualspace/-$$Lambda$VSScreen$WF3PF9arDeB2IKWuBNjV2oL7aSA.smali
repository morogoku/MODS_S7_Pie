.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Landroid/os/ConditionVariable;

.field private final synthetic f$3:Landroid/util/MutableBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;->f$2:Landroid/os/ConditionVariable;

    iput-object p4, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;->f$3:Landroid/util/MutableBoolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;->f$2:Landroid/os/ConditionVariable;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$WF3PF9arDeB2IKWuBNjV2oL7aSA;->f$3:Landroid/util/MutableBoolean;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$launchActivity$9(Lcom/samsung/android/server/virtualspace/VSScreen;Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V

    return-void
.end method
