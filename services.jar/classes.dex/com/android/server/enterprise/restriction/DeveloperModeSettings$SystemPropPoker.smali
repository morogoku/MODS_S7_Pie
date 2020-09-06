.class Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;
.super Landroid/os/AsyncTask;
.source "DeveloperModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemPropPoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DeveloperModeSettings"

    const-string v2, "Start System Poker - ServiceManager.listServices()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_5f

    nop

    nop

    if-eqz v1, :cond_57

    array-length v2, v1

    if-nez v2, :cond_14

    goto :goto_57

    :cond_14
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v2, :cond_56

    aget-object v5, v1, v4

    if-eqz v5, :cond_52

    :try_start_1d
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_52

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    const v8, 0x5f535052

    invoke-interface {v6, v8, v7, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_30} :catch_51
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_31

    goto :goto_52

    :catch_31
    move-exception v6

    const-string v7, "DeveloperModeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Someone wrote a bad service \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' that doesn\'t like to be poked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :catch_51
    move-exception v6

    :cond_52
    :goto_52
    nop

    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_56
    return-object v0

    :cond_57
    :goto_57
    const-string v2, "DeveloperModeSettings"

    const-string v3, " System Poker - Failed to get services"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_5f
    move-exception v1

    return-object v0
.end method
