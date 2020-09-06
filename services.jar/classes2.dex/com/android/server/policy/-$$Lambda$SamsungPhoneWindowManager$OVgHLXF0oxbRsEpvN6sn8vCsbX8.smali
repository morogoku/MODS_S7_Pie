.class public final synthetic Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$OVgHLXF0oxbRsEpvN6sn8vCsbX8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$OVgHLXF0oxbRsEpvN6sn8vCsbX8;->f$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$OVgHLXF0oxbRsEpvN6sn8vCsbX8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$OVgHLXF0oxbRsEpvN6sn8vCsbX8;->f$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$OVgHLXF0oxbRsEpvN6sn8vCsbX8;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->lambda$updateSettings$2(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)V

    return-void
.end method
