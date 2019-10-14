.class public final synthetic Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$Ml-b_mFGtswh5h-Bcw7Gr6bpusk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$Ml-b_mFGtswh5h-Bcw7Gr6bpusk;->f$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$Ml-b_mFGtswh5h-Bcw7Gr6bpusk;->f$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->lambda$updateSettings$0(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    return-void
.end method
