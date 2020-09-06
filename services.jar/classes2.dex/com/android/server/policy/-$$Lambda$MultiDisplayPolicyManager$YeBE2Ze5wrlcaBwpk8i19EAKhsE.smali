.class public final synthetic Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/view/Display;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/MultiDisplayPolicyManager;ILandroid/view/Display;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;->f$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    iput p2, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;->f$1:I

    iput-object p3, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;->f$2:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;->f$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    iget v1, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;->f$1:I

    iget-object v2, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;->f$2:Landroid/view/Display;

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->lambda$onDisplayAdded$0(Lcom/android/server/policy/MultiDisplayPolicyManager;ILandroid/view/Display;)V

    return-void
.end method
