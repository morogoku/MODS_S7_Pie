.class public final synthetic Lcom/android/server/-$$Lambda$AlarmManagerService$1OYPDrzG7dSJF7UwHe3bhDpoDuc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$1OYPDrzG7dSJF7UwHe3bhDpoDuc;->f$0:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$1OYPDrzG7dSJF7UwHe3bhDpoDuc;->f$0:Landroid/app/PendingIntent;

    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService;->lambda$removeCanceledLocked$1(Landroid/app/PendingIntent;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p1

    return p1
.end method
