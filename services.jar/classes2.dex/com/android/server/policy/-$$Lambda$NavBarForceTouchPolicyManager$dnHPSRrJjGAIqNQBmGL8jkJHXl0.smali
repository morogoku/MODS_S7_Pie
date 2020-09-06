.class public final synthetic Lcom/android/server/policy/-$$Lambda$NavBarForceTouchPolicyManager$dnHPSRrJjGAIqNQBmGL8jkJHXl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/NavBarForceTouchPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/NavBarForceTouchPolicyManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$NavBarForceTouchPolicyManager$dnHPSRrJjGAIqNQBmGL8jkJHXl0;->f$0:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$NavBarForceTouchPolicyManager$dnHPSRrJjGAIqNQBmGL8jkJHXl0;->f$0:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    invoke-static {v0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->lambda$pendingDismissKeyguard$1(Lcom/android/server/policy/NavBarForceTouchPolicyManager;)V

    return-void
.end method
