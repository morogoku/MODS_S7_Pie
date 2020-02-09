.class Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UpdateTickException;
.super Ljava/lang/Exception;
.source "SecureTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTickException"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UpdateTickException;->this$1:Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UpdateTickException;->this$1:Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
