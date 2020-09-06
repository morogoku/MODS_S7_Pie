.class public final synthetic Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$DisplayPolicy$gYkiR5xjb316YtrZJxK6N4Uga0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/InputEventReceiver$Factory;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$DisplayPolicy$gYkiR5xjb316YtrZJxK6N4Uga0Y;->f$0:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    return-void
.end method


# virtual methods
.method public final createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$DisplayPolicy$gYkiR5xjb316YtrZJxK6N4Uga0Y;->f$0:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    invoke-static {v0, p1, p2}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->lambda$getOrCreateInputConsumer$1(Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object p1

    return-object p1
.end method
