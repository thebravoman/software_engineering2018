$(document).ready(() => {
	$("#btnLoadJSON").click(() => {
		$.ajax({
			url: $("#txtJSONurl").val(),
			type: 'GET',
			dataType: 'json',
			crossDomain: true,
			processData: false,
			success: (data, status, xhr) => {
				$('#container').append('{');
				let text = '';
				for (let key of Object.keys(data)) {
					text = key + ': ' + data[key];
					let item = $(`<p>${text}</p>`);
					$('#container').append(item);
				}
				$('#container').append('}<br><br>');
			},
			error: (data, status, xhr) => {
				$('#container').append('{');
				$('#container').append($(`<p>success: false</p>`));
				$('#container').append($(`<p>statusCode: ${data.status}</p>`));
				$('#container').append('}<br><br>');
			}
		});
	});
});
