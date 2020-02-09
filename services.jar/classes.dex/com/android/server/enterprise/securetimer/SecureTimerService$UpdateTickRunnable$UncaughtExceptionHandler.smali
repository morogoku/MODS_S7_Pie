.class Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SecureTimerService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UncaughtExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UncaughtExceptionHandler;->this$1:Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;Lcom/android/server/enterprise/securetimer/SecureTimerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UncaughtExceptionHandler;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uncaughtException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
